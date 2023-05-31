package sdkInterface.tool;
import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;

public class ActResultRequest {

    private OnActResultEventDispatcherFragment fragment;

    public ActResultRequest(Activity activity) {
        fragment = getEventDispatchFragment(activity);
    }

    public OnActResultEventDispatcherFragment getFragment()
    {
        return fragment;
    }

    private OnActResultEventDispatcherFragment getEventDispatchFragment(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();

        OnActResultEventDispatcherFragment fragment = findEventDispatchFragment(fragmentManager);
        if (fragment == null) {
            fragment = new OnActResultEventDispatcherFragment();
            fragmentManager
                    .beginTransaction()
                    .add(fragment, OnActResultEventDispatcherFragment.TAG)
                    .commitAllowingStateLoss();
            fragmentManager.executePendingTransactions();
        }
        return fragment;
    }

    private OnActResultEventDispatcherFragment findEventDispatchFragment(FragmentManager manager) {
        return (OnActResultEventDispatcherFragment) manager.findFragmentByTag(OnActResultEventDispatcherFragment.TAG);
    }

    public void startForResult(Intent intent, Callback callback) {
        fragment.startForResult(intent, callback);
    }

    public interface Callback {

        void onActivityResult(int requestCode,int resultCode, Intent data);
    }
}