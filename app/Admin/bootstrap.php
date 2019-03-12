<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

Encore\Admin\Form::forget(['map']);
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;

Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $navbar->right('
        <li>
            <a href="/" target="_blank">
                <i class="fa fa-globe"></i>
                <span>Lihat Website</span>
            </a>
        </li>
    ');
});
