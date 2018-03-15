package ${moudlePackageName}


import com.zhouhaoo.common.injection.ActivityScope
import dagger.Module
import com.go.gogo.mvp.ui.activity.${pageName}Activity
import dagger.android.ContributesAndroidInjector



@Module
abstract class ${pageName}Module {

    @ActivityScope
    @ContributesAndroidInjector(modules = [${pageName}PresenterModule::class])
    abstract fun contribute${pageName}Activity(): ${pageName}Activity



}