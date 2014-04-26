package uk.ac.shu.webarch.mylistings



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PromoterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Promoter.list(params), model:[promoterInstanceCount: Promoter.count()]
    }

    def show(Promoter promoterInstance) {
        respond promoterInstance
    }

    def create() {
        respond new Promoter(params)
    }

    @Transactional
    def save(Promoter promoterInstance) {
        if (promoterInstance == null) {
            notFound()
            return
        }

        if (promoterInstance.hasErrors()) {
            respond promoterInstance.errors, view:'create'
            return
        }

        promoterInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'promoterInstance.label', default: 'Promoter'), promoterInstance.id])
                redirect promoterInstance
            }
            '*' { respond promoterInstance, [status: CREATED] }
        }
    }

    def edit(Promoter promoterInstance) {
        respond promoterInstance
    }

    @Transactional
    def update(Promoter promoterInstance) {
        if (promoterInstance == null) {
            notFound()
            return
        }

        if (promoterInstance.hasErrors()) {
            respond promoterInstance.errors, view:'edit'
            return
        }

        promoterInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Promoter.label', default: 'Promoter'), promoterInstance.id])
                redirect promoterInstance
            }
            '*'{ respond promoterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Promoter promoterInstance) {

        if (promoterInstance == null) {
            notFound()
            return
        }

        promoterInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Promoter.label', default: 'Promoter'), promoterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'promoterInstance.label', default: 'Promoter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
