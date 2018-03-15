package ${presenterPackageName}

import com.zhouhaoo.common.injection.ActivityScope
import com.zhouhaoo.common.mvp.BasePresenter



import javax.inject.Inject

import ${contractPackageName}.${pageName}Contract



@ActivityScope
class ${pageName}Presenter @Inject constructor(model:${pageName}Contract.Model,view:${pageName}Contract.View)  :BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,view) {
   

    /*
    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    fun onCreate() {
    //与对应Activity同步的生命周期函数，如需要，可以自己复写其他周期函数
        Timber.d("Lifecycle.Event.ON_CREATE")
    }
    */

}
