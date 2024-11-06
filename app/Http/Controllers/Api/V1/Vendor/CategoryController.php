<?php

namespace App\Http\Controllers\Api\V1\Vendor;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Item;
use Illuminate\Http\Request;
use DB;

class CategoryController extends Controller
{
    public function get_categories()
    {
        try {
            $categories = Category::where(['position'=>0,'status'=>1])
            ->when(config('module.current_module_data'), function($query){
                $query->module(config('module.current_module_data')['id']);
            })
            ->orderBy('priority','desc')->get();
            return response()->json($categories, 200);
            // return response()->json(Helpers::category_data_formatting($categories, true), 200);
        } catch (\Exception $e) {
            return response()->json([], 200);
        }
    }

    public function get_childes($id)
    {
        try {
            $categories = Category::query();
            if(is_numeric($id)){
                $categories = $categories->where('parent_id', $id);
            } else {
                $categories = $categories->whereHas('parent',function($query)use($id){
                    $query->where('slug',$id);
                });
            }
            $categories = $categories->where('status',1)->orderBy('priority','desc')->get();
            return response()->json($categories, 200);
            // return response()->json(Helpers::category_data_formatting($categories, true), 200);
        } catch (\Exception $e) {
            return response()->json([], 200);
        }
    }
    public function category_list(Request $request){
//          try {
// $categories = Category::where(['position' => 0, 'status' => 1])
//     ->when(config('module.current_module_data'), function($query) {
//         $query->module(config('module.current_module_data')['id']);
//     })
//     ->orderBy('priority', 'desc')
//     ->select('id', 'name') // Selecting only 'id' and 'name'
//     ->get()
//     ->map(function ($category) {
//         return [
//             'id' => $category->id,
//             'name' => $category->name
//         ]; // Returning only 'id' and 'name'
//     });
// $categories->prepend(['id' => 'all', 'name' => 'ALL']);
// return response()->json($categories, 200);
//             // return response()->json(Helpers::category_data_formatting($categories, true), 200);
//         } catch (\Exception $e) {
//             return response()->json([], 200);
//         }
$categories = \DB::table('categories')
    ->leftJoin('items', 'categories.id', '=', 'items.category_id')
    ->where('items.store_id', $request['vendor']->stores[0]->id)
    ->whereNotNull('items.id') // Ensure only categories with associated items are returned
    ->select('categories.id', 'categories.name')
    ->distinct()
    ->get()
    ->map(function ($category) {
        return [
            'id' => $category->id,
            'name' => $category->name,
        ]; // Returning only 'id' and 'name'
    });
   // return $categories;
    // ->map(function ($category) {
    //     return [
    //         'id' => $category->id,
    //         'name' => $category->name,
    //     ]; // Returning only 'id' and 'name'
    // });
$categories->prepend(['id' => 'all', 'name' => 'ALL']);
 return response()->json($categories, 200);
    }
}
