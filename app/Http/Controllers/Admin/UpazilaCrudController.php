<?php

namespace App\Http\Controllers\Admin;

use App\Models\Upazila;
use Illuminate\Http\Request;
use App\Http\Requests\UpazilaRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class UpazilaCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class UpazilaCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Upazila::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/upazila');
        CRUD::setEntityNameStrings('upazila', 'upazilas');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All Upazila List');

        CRUD::column('district_id')->type('relationship')->label('District Name');
        CRUD::column('name')->label('Upazila Name');
        CRUD::column('area');
        CRUD::column('total_haor');

        $this->crud->addColumns([
            [
                'name' => 'Upazila Page URL',
                'type' => 'closure',
                'function' => function($entry) {
                    return '<a class="btn btn-sm btn-link" target="_blank" href="/upazila/'.$entry->id.'"><i class="la la-eye"></i> Open</a>';
                },
            ],
        ]);

        CRUD::filter('district_id')
                ->label('District Name')
                ->type('select2')
                ->values(function() {
                  return \App\Models\District::all()->pluck('name', 'id')->toArray();
                })
                ->whenActive(function($value) {
                  CRUD::addClause('where', 'district_id', $value);
                });

        $this->crud->denyAccess('show');
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(UpazilaRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('district_id')
                ->type('select2')
                ->label('District Name')
                ->placeholder('Select District')
                ->model('App\Models\District')
                ->attribute('name')
                ->options(function ($query) {
                    return $query->orderBy('name', 'ASC')->get();
                })
                ->size(4);

        CRUD::field('name')
                ->type('text')
                ->label('Upazila Name')
                ->size(8);
        
        CRUD::field('area')
                ->type('text')
                ->label('Upazila Area')
                ->size(4);

        CRUD::field('total_haor')
                ->type('text')
                ->label('Total Haor of Upazila')
                ->size(4);

        CRUD::field('header_img')
                ->type('image')
                ->label('Top Background Image')
                ->upload(true)
                ->disk('public')
                ->size(4);

        CRUD::field('description')
                ->type('ckeditor')
                ->label('Description of Upazila')
                ->size(12);
    }

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }

    public function upazilaOptions(Request $request)
    {
        //dd($request->input());exit;

        $search_term = $request->input('q');

        $form = backpack_form_input();
        //echo "<pre>";print_r($form);exit;

        $options = Upazila::query();

        if ( empty($form['district_id']) ) {
            return [];
        }

        // if a category has been selected, only show articles in that category
        if ($form['district_id']) {
            //print_r($form);
            $options = $options->where('district_id', $form['district_id']);
            //$options = $options->whereIn('make_id', $form['make_ids']);
        }

        if ($search_term) {
            $results = $options->where('name', 'LIKE', '%'.$search_term.'%')->paginate(10);
        } else {
            $results = $options->paginate(10);
        }

        return $results;
    }

}
