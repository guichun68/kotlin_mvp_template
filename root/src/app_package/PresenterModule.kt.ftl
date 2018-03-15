package ${moudlePackageName}

import com.zhouhaoo.common.injection.ActivityScope
import ${contractPackageName}.${pageName}Contract
import ${modelPackageName}.${pageName}Model
import ${ativityPackageName}.${pageName}Activity
import dagger.Module
import dagger.Provides


@Module
class ${pageName}PresenterModule {

	@ActivityScope
	@Provides
    internal fun provide${pageName}View(${pageName?uncap_first}Activity: ${pageName}Activity): ${pageName}Contract.View {
        return ${pageName?uncap_first}Activity
    }

    @ActivityScope
    @Provides
    internal fun provide${pageName}Model(model: ${pageName}Model): ${pageName}Contract.Model {
        return model
    }

}
