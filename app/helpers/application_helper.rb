#encoding: utf-8
module ApplicationHelper
	def ordenacao(atributo = nil)
		(link_to url_for(:ordenar_por => atributo, :ordem => :asc) do
            (content_tag :i, '',:class=> "icon-chevron-up").html_safe
		end) +
		(link_to url_for(:ordenar_por => atributo, :ordem => :desc) do
			(content_tag :i, '',:class=> "icon-chevron-down").html_safe
		end) +
		(Client.human_attribute_name(atributo))
  end

	def current_controller?(test_path)
		return 'active' if controller.controller_name == test_path
		''
	end

	def html_current_controller?(test_path)
		return "class=active" if controller.controller_name == test_path
	end

	def show_atributo(nome_atributo, atributo)
		content_tag(:div, :class => 'show-conteudo-atributo') do
			content_tag(:p, content_tag(:b, nome_atributo)) +
			content_tag(:p, atributo)
		end
	end

	def boolean_ativado boolean_atributo
		if boolean_atributo == false
			'Desativado'
		else
			'Ativado'
		end
	end

	def pagination(collection, options = {})
		options[:renderer] ||= BootstrapPaginationHelper::LinkRenderer
		options[:next_label] ||= '>'
		options[:previous_label] ||= '<'
		will_paginate(collection, options)
	end

	def h_b(boolean)
		boolean ? 'Sim' : 'Não'
	end
end
