<?php

/**
 * @file
 * Install profile for Enterprise Profile.
 */

use Drupal\Core\DependencyInjection\ContainerBuilder;
use Drupal\Core\DependencyInjection\ServiceProviderBase;

/**
 * Implements hook_form_alter() to modify the site installation form.
 */
function enterprise_profile_form_alter(&$form, \Drupal\Core\Form\FormStateInterface $form_state, $form_id) {
  if ($form_id === 'install_configure_form') {
    $form['site_information']['site_name']['#default_value'] = 'Enterprise Site';
  }
}
