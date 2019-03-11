<?php

namespace App\Admin\Controllers;

use App\Product;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProductController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product);

        $grid->id('Id');
        $grid->product_name('Product Name');
        $grid->product_ingredients('Product Ingredients');
        $grid->product_formulation('Product Formulation');
        $grid->product_use('Product Use')->display(function ($product_use) {
            return $product_use;
        });
        $grid->product_dose('Product Dose')->display(function ($product_dose) {
            return $product_dose;
        });
        $grid->product_package('Product Package')->display(function ($product_package) {
            return $product_package;
        });
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');
        // $grid->filter(function ($filter) {
            // $filter->disableIdFilter();
            // $filter->like('product_formulation', 'Product Ingredients');
        // });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->id('Id');
        $show->product_name('Product name');
        $show->product_ingredients('Product ingredients');
        $show->product_formulation('Product formulation');
        $show->product_use('Product use');
        $show->product_dose('Product dose');
        $show->product_package('Product package');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product);

        $form->text('product_name', 'Product name');
        $form->text('product_ingredients', 'Product ingredients');
        $form->text('product_formulation', 'Product formulation');
        $form->editor('product_use', 'Product use');
        $form->editor('product_dose', 'Product dose');
        $form->editor('product_package', 'Product package');

        return $form;
    }
}
