import org.craftercms.blueprints.headless.ProcessSearchHelper

def searchHelper = new ProcessSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.supportTech_s

def processes = searchHelper.searchProcess(category,0,3)
templateModel.processes = processes