module ThreeScaleToolbox
  module Commands
    module ServiceCommand
      module CopyCommand
        class CopyServiceProxyTask
          include Task

          def call
            target.update_proxy source.proxy
            target.update_oidc source.oidc if source.attrs['backend_version'] == 'oidc'
            puts "updated proxy of #{target.id} to match the original"
          end
        end
      end
    end
  end
end