package com.m360.utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

/***
 * 通过http访问应用服务器，获取http返回结果
 */
public class SdkHttpTask extends AsyncTask<String, Void, String> {
	private static final String TAG = "SdkHttpTask";
	private static final int MAX_RETRY_TIME = 3;
	private int mRetryCount;
	private SdkHttpListener mListener;
	private HashMap<String, String> mParamsMap = new HashMap<String, String>();
	private boolean mIsHttpPost;
	private Context mContext;
	private static ExecutorService mPools = Executors.newFixedThreadPool(3);

	public SdkHttpTask(Context context) {
		mContext = context;
	}

	public void doPost(SdkHttpListener listener, HashMap<String, String> paramsMap, String url) {
		this.mListener = listener;
		this.mIsHttpPost = true;
		this.mParamsMap = paramsMap;
		this.mRetryCount = 0;

		execute(url);
	}

	public void doGet(SdkHttpListener listener, String url) {
		this.mListener = listener;
		this.mIsHttpPost = false;
		this.mRetryCount = 0;

		execute(url);
	}

	public void doPostOnExecutor(SdkHttpListener listener, HashMap<String, String> paramsMap, String url) {
		this.mListener = listener;
		this.mIsHttpPost = true;
		this.mParamsMap = paramsMap;
		this.mRetryCount = 0;
		executeOnExecutor(mPools, url);
	}

	public void doGetOnExecutor(SdkHttpListener listener, String url) {
		this.mListener = listener;
		this.mIsHttpPost = false;
		this.mRetryCount = 0;
		if (mPools == null) {
			mPools = Executors.newFixedThreadPool(3);
		}
		executeOnExecutor(mPools, url);
	}

	@Override
	protected String doInBackground(String... params) {
		String response = null;
		while (mRetryCount < MAX_RETRY_TIME) {
			if (isCancelled()) {
				return null;
			}

			try {
				String httpUrl = params[0];
				response = executeHttp(mContext, httpUrl);
				if (!isCancelled()) {
					return response;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			mRetryCount++;
		}
		return response;
	}

	@Override
	protected void onCancelled() {
		super.onCancelled();

		if (mListener != null) {
			mListener.onCancelled();
			mListener = null;
		}
	}

	@Override
	protected void onPostExecute(String response) {
		super.onPostExecute(response);

		if (mListener != null && !isCancelled()) {
			mListener.onResponse(response);
			mListener = null;
		}
	}

	private String executeHttp(Context context, String httpUrl) {
		return mIsHttpPost ? requestPost(httpUrl, mParamsMap) : requestGet(httpUrl);
	}

	private String streamToString(InputStream is) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		StringBuilder sb = new StringBuilder();
		String line = null;
		try {
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb.toString();
	}

	private String requestPost(String httpUrl, HashMap<String, String> paramsMap) {
		String result = null;
		try {
			StringBuilder tempParams = new StringBuilder();
			int pos = 0;
			for (String key : paramsMap.keySet()) {
				if (pos > 0) {
					tempParams.append("&");
				}
				tempParams.append(String.format("%s=%s", key, URLEncoder.encode(paramsMap.get(key), "utf-8")));
				pos++;
			}
			String params = tempParams.toString();
			byte[] postData = params.getBytes();
			URL url = new URL(httpUrl);
			HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
			urlConn.setConnectTimeout(30 * 1000);
			urlConn.setReadTimeout(30 * 1000);
			urlConn.setDoOutput(true);
			urlConn.setDoInput(true);
			urlConn.setUseCaches(false);
			urlConn.setRequestMethod("POST");
			urlConn.setInstanceFollowRedirects(true);
			urlConn.setRequestProperty("Content-Type", "application/json");
			urlConn.connect();
			DataOutputStream dos = new DataOutputStream(urlConn.getOutputStream());
			dos.write(postData);
			dos.flush();
			dos.close();
			if (urlConn.getResponseCode() == 200) {
				result = streamToString(urlConn.getInputStream());
				Log.e(TAG, "Post方式请求成功，result--->" + result);
			} else {
				Log.e(TAG, "Post方式请求失败");
			}
			urlConn.disconnect();
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}
		return result;
	}

	private String requestGet(String httpUrl) {
		String result = null;
		try {
			URL url = new URL(httpUrl);
			HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
			urlConn.setConnectTimeout(30 * 1000);
			urlConn.setReadTimeout(30 * 1000);
			urlConn.setUseCaches(true);
			urlConn.setRequestMethod("GET");
			urlConn.setRequestProperty("Content-Type", "application/json");
			urlConn.addRequestProperty("Connection", "Keep-Alive");
			urlConn.connect();
			if (urlConn.getResponseCode() == 200) {
				result = streamToString(urlConn.getInputStream());
				Log.e(TAG, "Get方式请求成功，result--->" + result);
			} else {
				Log.e(TAG, "Get方式请求失败");
			}
			urlConn.disconnect();
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}
		return result;
	}
}
