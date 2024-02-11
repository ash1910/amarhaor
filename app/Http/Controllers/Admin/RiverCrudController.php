<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\RiverRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class RiverCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class RiverCrudController extends CrudController
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
        CRUD::setModel(\App\Models\River::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/river');
        CRUD::setEntityNameStrings('river', 'rivers');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All River List');

        CRUD::column('region');
        CRUD::column('name');

        CRUD::filter('region')
                ->label('Region')
                ->type('dropdown')
                ->values([
                    "North West Region" => "North West Region", 
                    "North Central Region" => "North Central Region", 
                    "North East Region" => "North East Region", 
                    "Eastern Hills Region" => "Eastern Hills Region", 
                    "South East Region" => "South East Region", 
                    "South West Region" => "South West Region", 
                ])
                ->whenActive(function($value) {
                  CRUD::addClause('where', 'region', $value);
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
        CRUD::setValidation(RiverRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::addField([
            'name' => 'region',
            'label' => 'Region',
            'type' => 'select_from_array',
            'options' => [
                "North West Region" => "North West Region", 
                "North Central Region" => "North Central Region", 
                "North East Region" => "North East Region", 
                "Eastern Hills Region" => "Eastern Hills Region", 
                "South East Region" => "South East Region", 
                "South West Region" => "South West Region", 
            ],
            'allows_null' => false,
            'wrapper' => [
                'class' => 'col-md-4',
            ],
        ]);

        CRUD::field('name')
                ->type('text')
                ->label('River Name')
                ->size(8);
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
}
