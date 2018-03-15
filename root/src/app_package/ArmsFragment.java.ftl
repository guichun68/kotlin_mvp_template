package ${fragmentPackageName};


import android.os.Bundle;
import com.neh.scm.base.BaseLoadFragment;
import com.zhou.arms.di.component.AppComponent;

import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import ${packageName}.R;

/**
 *
 */
public class ${pageName}Fragment extends BaseLoadFragment<${pageName}Presenter> implements ${pageName}Contract.View{


    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void setupFragmentComponent(AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    protected int initLayout(Bundle savedInstanceState) {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    public void initData(Bundle savedInstanceState) {

    }

    @Override
    public void setData(Object data) {

    }

}
