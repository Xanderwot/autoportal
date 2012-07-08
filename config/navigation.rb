# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    primary.item :catalog, 'Каталог', root_path
    primary.item :autodiller, 'Автодиллеры', '#'
    primary.item :autohouse, 'Автохаусы', '#'
    primary.item :transportation, 'Грузоперевозки', '#'
    primary.item :oil, 'Масло', '#'
    primary.item :sto, 'СТО', '#'
    primary.item :rolling, 'Прокат', '#'
    primary.item :autoschool, 'Автошколы', '#'
    primary.item :spare, 'Запчасти', '#'
    primary.item :place, 'Выбор региона', '#'
    if current_user.nil?
      primary.item :sign_in, t('sign_in'), new_user_session_path
      primary.item :sign_up, t('sign_up'), new_user_registration_path
    else
      primary.item :account, t('signed_as'), edit_user_registration_path
      primary.item :sign_out, t('sign_out'), destroy_user_session_path, method: :delete
    end
    primary.dom_class = 'nav'
  end
end
