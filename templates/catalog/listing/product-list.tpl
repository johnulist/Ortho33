{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='layouts/layout-full-width.tpl'}

{block name='content'}
  <section class="container">

    {block name='product_list_header'}
      <h2 class="list__title">{$listing.label}</h2>
    {/block}

    <section id="list" class="margin-bottom-big">
      
      {if isset($subcategories) && $subcategories|count} 
        
        {* Listes des catégories enfante *}
        {block name="subcategories_list"}{/block}
      

      {elseif $listing.products|count}

        
        {* Outils de sélection de filtres *}
        {*block name='product_list_top'}
          {include file='catalog/_partials/products-top.tpl' listing=$listing}
        {/block*}
      
        {* Listes des filtres actifs *}
        {block name='product_list_active_filters'}
          <div id="" class="hidden-sm-down">
            {$listing.rendered_active_filters nofilter}
          </div>
        {/block}

        {* Listes des produits *}
        {block name='product_list'}
          {include file='catalog/_partials/products.tpl' listing=$listing type="miniature" style="border"}
        {/block}
        
        {* Affichage bas de pages *}
        <div id="js-product-list-bottom">
          {block name='product_list_bottom'}
            {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
          {/block}
        </div>

      {else}

        {include file='errors/not-found.tpl'}

      {/if}
    </section>
  </section>
{/block}
