package ${modelPackageName}


import com.zhouhaoo.common.injection.ActivityScope
import com.zhouhaoo.common.interfaces.IRepositoryManager
import com.zhouhaoo.common.mvp.BaseModel

import javax.inject.Inject
import ${contractPackageName}.${pageName}Contract



@ActivityScope
class ${pageName}Model @Inject constructor(repositoryManager: IRepositoryManager) : BaseModel(repositoryManager) , ${pageName}Contract.Model{

    

}