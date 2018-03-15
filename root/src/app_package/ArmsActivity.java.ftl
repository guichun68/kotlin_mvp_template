package ${ativityPackageName}

import android.os.Bundle



import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter
import com.zhouhaoo.common.base.BaseActivity

import ${packageName}.R


class ${pageName}Activity : BaseActivity<${pageName}Presenter>(),${pageName}Contract.View {

    override fun initView(savedInstanceState: Bundle?):Int {
        return R.layout.${activityLayoutName}; //如果你不需要框架帮你设置setContentView(id) 需要自行设置,请返回 0
    }

    override fun initData(savedInstanceState:Bundle?) {

    }

    override fun showLoading() {
    }

    override fun hideLoading() {
    }

    override fun showMessage(message: String) {
    }
}
