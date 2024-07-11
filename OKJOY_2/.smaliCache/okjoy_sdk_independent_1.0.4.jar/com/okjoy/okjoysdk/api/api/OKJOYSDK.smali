.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;,
        Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;
    }
.end annotation


# instance fields
.field public initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

.field public mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->deviceActivate(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->userRegisterReport(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->preloadOnlineVerify(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showLoginBanner(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static autoLogin()V
    .registers 0

    return-void
.end method

.method public static deviceActivate(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lokjoy/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lokjoy/e/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8def\u5f84 == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lokjoy/a/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {p0, v1}, Lokjoy/a/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {p0, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_39

    :cond_36
    invoke-static {p0, v1, v2}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_39
    :goto_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    :cond_43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_51

    .line 3
    const-string p0, "\u8bbe\u5907\u5df2\u6fc0\u6d3b"

    invoke-static {p0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void

    :cond_51
    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$11;

    invoke-direct {v0, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$11;-><init>(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Lokjoy/h/j0;

    invoke-direct {v1, p0}, Lokjoy/h/j0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lokjoy/h/u0;

    invoke-direct {v1, v0}, Lokjoy/h/u0;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=system&ac=activate"

    invoke-static {v0, p0, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method

.method public static final getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;
    .registers 1

    # getter for: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;->access$100()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    return-object v0
.end method

.method public static loginActivate(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lokjoy/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lokjoy/e/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lokjoy/a/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {p0, v1}, Lokjoy/a/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_23

    :cond_20
    invoke-static {p0, v1, v2}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_23
    :goto_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    .line 3
    const-string p0, "\u767b\u5f55\u5df2\u6fc0\u6d3b\uff0c\u65e0\u9700\u91cd\u590d\u6fc0\u6d3b"

    invoke-static {p0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void

    :cond_3b
    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$12;

    invoke-direct {v0, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$12;-><init>(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Lokjoy/h/d1;

    invoke-direct {v1, p0}, Lokjoy/h/d1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lokjoy/h/f1;

    invoke-direct {v1, v0}, Lokjoy/h/f1;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=system&ac=activateLogin"

    invoke-static {v0, p0, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method

.method public static preloadOnlineVerify(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lokjoy/a/n;)V

    return-void
.end method

.method public static showLoginBanner(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    new-instance v0, Lokjoy/t/b;

    invoke-direct {v0, p0}, Lokjoy/t/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getIsNew()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    if-ne p0, v1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lokjoy/t/b;->d:Ljava/lang/String;

    .line 2
    iput-boolean p0, v0, Lokjoy/t/b;->e:Z

    .line 3
    invoke-virtual {v0}, Lokjoy/t/b;->show()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;

    invoke-direct {p1, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;-><init>(Lokjoy/t/b;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static startRequestPermission(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_13

    .line 1
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    .line 0
    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 1
    :goto_14
    if-eqz v0, :cond_27

    .line 2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$10;

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$10;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;)V

    invoke-static {p0, v0, v1}, Lokjoy/a/g;->a(Landroid/app/Activity;[Ljava/lang/String;Lokjoy/q/i;)V

    goto :goto_2a

    :cond_27
    invoke-interface {p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;->onPermissionsGranted()V

    :goto_2a
    return-void
.end method

.method public static userRegisterReport(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0, p1}, Lokjoy/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lokjoy/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lokjoy/a/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {p0, v1}, Lokjoy/a/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_23

    :cond_20
    invoke-static {p0, v1, v2}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_23
    :goto_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_52

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7528\u6237"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u5df2\u6ce8\u518c\u4e0a\u62a5\uff0c\u65e0\u9700\u91cd\u590d\u4e0a\u62a5"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void

    :cond_52
    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$13;

    invoke-direct {v0, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$13;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lokjoy/h/g1;

    invoke-direct {p1, p0}, Lokjoy/h/g1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lokjoy/h/h1;

    invoke-direct {p1, v0}, Lokjoy/h/h1;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=user&ac=registerReport"

    invoke-static {v0, p0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method


# virtual methods
.method public archivesGetFile(Landroid/app/Activity;ZLjava/lang/String;)V
    .registers 6

    .line 1
    sget-boolean v0, Lokjoy/e/b;->d:Z

    if-nez v0, :cond_18

    const-string p1, "\u83b7\u53d6\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u5fc5\u987b\u5148\u767b\u5f55"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz p2, :cond_89

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    :goto_12
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    goto :goto_89

    :cond_18
    if-eqz p2, :cond_2f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p1, "\u83b7\u53d6\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u9009\u62e9\u4e0b\u8f7d\uff0cfilePath\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    if-eqz p2, :cond_89

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_2f
    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lokjoy/e/b;->a:Ljava/lang/String;

    new-instance v1, Lokjoy/b/f;

    invoke-direct {v1, p2, p3}, Lokjoy/b/f;-><init>(ZLjava/lang/String;)V

    .line 2
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object p3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p2, p3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    const-string p3, "gameId"

    invoke-virtual {p2, p3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    const-string p3, "userCode"

    invoke-virtual {p2, p3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    invoke-static {v0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "sign"

    invoke-virtual {p2, p3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string p3, "http://file.ok-joy.com/Api/Normal/getFile"

    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string p3, "POST"

    invoke-virtual {p2, p3, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lokjoy/b/b;

    invoke-direct {p2, v1}, Lokjoy/b/b;-><init>(Lokjoy/h/c;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_89
    :goto_89
    return-void
.end method

.method public archivesUpLoadFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-boolean v0, Lokjoy/e/b;->d:Z

    if-nez v0, :cond_19

    const-string p1, "\u5b58\u6863\u4e0a\u4f20\u6587\u4ef6\u5931\u8d25\uff1a\u5fc5\u987b\u5148\u767b\u5f55"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    if-eqz p2, :cond_c1

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    :goto_12
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V

    goto/16 :goto_c1

    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p1, "\u5b58\u6863\u4e0a\u4f20\u6587\u4ef6\u5931\u8d25\uff1a\u6587\u4ef6\u8def\u5f84\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    if-eqz p2, :cond_c1

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_2e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_48

    const-string p1, "\u5b58\u6863\u4e0a\u4f20\u6587\u4ef6\u5931\u8d25\uff1a\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    if-eqz p2, :cond_c1

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    invoke-direct {p2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p2}, Lokjoy/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_52
    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lokjoy/e/b;->a:Ljava/lang/String;

    new-instance v1, Lokjoy/b/d;

    invoke-direct {v1}, Lokjoy/b/d;-><init>()V

    .line 2
    const-string v2, "multipart/form-data"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "gameId"

    invoke-virtual {v2, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "userCode"

    invoke-virtual {v2, v3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    invoke-static {v0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sign"

    invoke-virtual {v2, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string p3, "http://file.ok-joy.com/Api/Normal/saveFile"

    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string p3, "POST"

    invoke-virtual {p2, p3, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lokjoy/b/a;

    invoke-direct {p2, v1}, Lokjoy/b/a;-><init>(Lokjoy/h/c;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public closeRightAgeFloatDialog(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->closeFloatView()V

    return-void
.end method

.method public getInitModel()Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

    return-object v0
.end method

.method public getmActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;)V
    .registers 8

    const-string v0, "\u8c03\u7528\u521d\u59cb\u5316\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_19

    const-string p1, "\u521d\u59cb\u5316\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p2, :cond_18

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    invoke-direct {v0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_2f

    const-string p1, "\u521d\u59cb\u5316\u63a5\u53e3 initModel \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p2, :cond_2e

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    invoke-direct {v0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_2e
    return-void

    :cond_2f
    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

    invoke-static {p1}, Lokjoy/a/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p1, :cond_49

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    const-string v0, "\u521d\u59cb\u5316\u53c2\u6570 platform \u672a\u914d\u7f6e"

    invoke-direct {p2, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_49
    return-void

    :cond_4a
    invoke-static {p1}, Lokjoy/a/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p1, :cond_62

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    const-string v0, "\u521d\u59cb\u5316\u53c2\u6570 gameId \u672a\u914d\u7f6e"

    invoke-direct {p2, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_62
    return-void

    :cond_63
    invoke-static {p1}, Lokjoy/a/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p1, :cond_7b

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    const-string v0, "\u521d\u59cb\u5316\u53c2\u6570 adId \u672a\u914d\u7f6e"

    invoke-direct {p2, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_7b
    return-void

    :cond_7c
    sput-object v0, Lokjoy/e/b;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_90

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_90

    move v0, v1

    goto :goto_91

    :cond_90
    move v0, v2

    :goto_91
    if-eqz v0, :cond_f3

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$1;

    invoke-direct {v0, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;)V

    .line 3
    const-string v3, "OK_JOY_SHARE_PREFERENCES_FILE_OAID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "OK_JOY_SHARE_PREFERENCES_KEY_OAID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-virtual {v0, v2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$1;->onSuccess(Ljava/lang/String;)V

    goto :goto_f3

    :cond_b0
    new-instance v2, Lokjoy/q/e;

    invoke-direct {v2, v0}, Lokjoy/q/e;-><init>(Lokjoy/q/f;)V

    invoke-static {p1, v1, v2}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I

    move-result v0

    const v1, 0xf63e2

    const-string v2, "\u83b7\u53d6OAID\uff1a"

    if-ne v0, v1, :cond_c6

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :goto_c2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :cond_c6
    const v1, 0xf63e4

    if-ne v0, v1, :cond_ce

    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301"

    goto :goto_c2

    :cond_ce
    const v1, 0xf63e5

    if-ne v0, v1, :cond_d6

    const-string v0, "\u52a0\u8f7d\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    goto :goto_c2

    :cond_d6
    const v1, 0xf63e3

    if-ne v0, v1, :cond_de

    const-string v0, "\u5382\u5546\u4e0d\u652f\u6301"

    goto :goto_c2

    :cond_de
    const v1, 0xf63e6

    if-ne v0, v1, :cond_e6

    const-string v0, "\u83b7\u53d6\u63a5\u53e3\u662f\u5f02\u6b65\u7684\uff0c\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de\uff0c\u56de\u8c03\u6267\u884c\u7684\u56de\u8c03\u53ef\u80fd\u5728\u5de5\u4f5c\u7ebf\u7a0b"

    goto :goto_c2

    :cond_e6
    const v1, 0xf63e7

    if-ne v0, v1, :cond_ee

    const-string v0, "\u53cd\u5c04\u8c03\u7528\u9519\u8bef"

    goto :goto_c2

    :cond_ee
    const-string v0, "\u83b7\u53d6OAID\u6210\u529f"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_f3
    :goto_f3
    sput-object p1, Lokjoy/m/b;->a:Landroid/app/Activity;

    .line 6
    new-instance v0, Lokjoy/m/a;

    invoke-direct {v0}, Lokjoy/m/a;-><init>()V

    .line 7
    new-instance v1, Lokjoy/h/t0;

    invoke-direct {v1, p1}, Lokjoy/h/t0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lokjoy/h/v0;

    invoke-direct {v2, v0}, Lokjoy/h/v0;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=info&ac=sdkContent"

    invoke-static {v0, v1, v2}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    .line 8
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->intent(Landroid/content/Context;)V

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;)V

    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->startRequestPermission(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;)V

    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "\u8c03\u7528\u767b\u5f55\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_19

    const-string p1, "\u767b\u5f55\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->loginListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    :cond_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    sput-boolean v0, Lokjoy/e/b;->c:Z

    sget-boolean v0, Lokjoy/e/b;->b:Z

    if-nez v0, :cond_28

    const-string p1, "\u672a\u521d\u59cb\u5316\u6210\u529f\uff0c\u5c31\u8c03\u7528\u767b\u5f55\u63a5\u53e3"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void

    :cond_28
    invoke-static {p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->loginActivate(Landroid/app/Activity;)V

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    invoke-direct {v0, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;)V

    sput-object v0, Lcom/okjoy/okjoysdk/callback/OkJoyInsideCallBackManager;->insideLoginListener:Lcom/okjoy/okjoysdk/callback/OkJoyCallback;

    .line 1
    sget-object v0, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 2
    invoke-virtual {v0}, Lokjoy/a/j;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lokjoy/e/b;->d:Z

    const-string v0, ""

    sput-object v0, Lokjoy/e/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    invoke-direct {v1, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->showRightView(Landroid/app/Activity;Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;)V
    .registers 4

    if-nez p1, :cond_14

    const-string p1, "\u6ce8\u9500\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->logoutListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;)V

    :cond_13
    return-void

    :cond_14
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    .line 1
    sget-object v0, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 2
    invoke-virtual {v0}, Lokjoy/a/j;->a()V

    const-string v0, ""

    sput-object v0, Lokjoy/e/b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->deleteUser(Landroid/content/Context;)V

    const/4 p1, 0x0

    sput-boolean p1, Lokjoy/e/b;->d:Z

    .line 3
    invoke-static {}, Lcom/qiyukf/unicorn/api/Unicorn;->isInit()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/qiyukf/unicorn/api/Unicorn;->logout()V

    .line 4
    :cond_2e
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->logoutListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;

    if-eqz p1, :cond_3c

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;

    const-string v1, "SDK\u6ce8\u9500\u6210\u529f"

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLogoutCallBackModel;)V

    :cond_3c
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onCreate"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onDestroy"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onPause"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onRestart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onResume"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onStart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2

    const-string p1, "\u8c03\u7528\u751f\u547d\u5468\u671f\u63a5\u53e3 onStop"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public openUserCenter(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "\u8c03\u7528\u6253\u5f00\u7528\u6237\u4e2d\u5fc3\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_19

    const-string p1, "\u767b\u5f55\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->openUserCenterListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V

    :cond_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    sget-boolean v0, Lokjoy/e/b;->d:Z

    if-nez v0, :cond_2e

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->openUserCenterListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;

    if-eqz p1, :cond_2d

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    const-string v1, "SDK\u672a\u767b\u5f55"

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyUserCenterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->openUserCenterListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;

    if-eqz p1, :cond_49

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V

    :cond_49
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V
    .registers 16

    const-string v0, "\u8c03\u7528\u652f\u4ed8\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_21

    const-string p1, "\u652f\u4ed8\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p2, :cond_20

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_20
    return-void

    :cond_21
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    sget-boolean v0, Lokjoy/e/b;->g:Z

    if-eqz v0, :cond_a8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object p2

    :cond_37
    move-object v3, p2

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_4a

    move-object v5, v1

    goto :goto_4b

    :cond_4a
    move-object v5, p2

    :goto_4b
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v6, v1

    goto :goto_58

    :cond_57
    move-object v6, p2

    :goto_58
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    move-object v7, v1

    goto :goto_65

    :cond_64
    move-object v7, p2

    :goto_65
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getServerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    move-object v8, v1

    goto :goto_72

    :cond_71
    move-object v8, p2

    :goto_72
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getServerName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    move-object v9, v1

    goto :goto_7f

    :cond_7e
    move-object v9, p2

    :goto_7f
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleLevel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    move-object v10, v1

    goto :goto_8c

    :cond_8b
    move-object v10, p2

    :goto_8c
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getExtraInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_98

    move-object v11, v1

    goto :goto_99

    :cond_98
    move-object v11, p2

    :goto_99
    iget-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    new-instance p3, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/l;)V

    goto/16 :goto_1dd

    :cond_a8
    sget-boolean p2, Lokjoy/e/b;->d:Z

    const/4 v0, 0x0

    if-nez p2, :cond_ce

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aSDK\u672a\u767b\u5f55"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_cd

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_cd
    return-void

    :cond_ce
    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_fc

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aproductId \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_fb

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_fb
    return-void

    :cond_fc
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_127

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aorderId \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_126

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_126
    return-void

    :cond_127
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_152

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aroleId \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_151

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_151
    return-void

    :cond_152
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_17d

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aroleName \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_17c

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_17c
    return-void

    :cond_17d
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getServerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1a8

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aserverId \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_1a7

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_1a7
    return-void

    :cond_1a8
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getExtraInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1d3

    const-string p2, "\u652f\u4ed8\u5931\u8d25\uff1aextraInfo \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_1d2

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_1d2
    return-void

    :cond_1d3
    iget-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V

    invoke-static {p2, v0}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/l;)V

    :goto_1dd
    return-void
.end method

.method public setArchivesGetFileListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesGetFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;

    :cond_4
    return-void
.end method

.method public setArchivesUploadFileListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->archivesUploadFileListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;

    :cond_4
    return-void
.end method

.method public setInitListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    :cond_4
    return-void
.end method

.method public setInterstitialAdListener(Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    :cond_4
    return-void
.end method

.method public setLogOpen(Z)V
    .registers 2

    .line 1
    sput-boolean p1, Lokjoy/a/g;->d:Z

    return-void
.end method

.method public setLoginListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->loginListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;

    :cond_4
    return-void
.end method

.method public setLogoutListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->logoutListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;

    :cond_4
    return-void
.end method

.method public setOpenUserCenterListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->openUserCenterListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;

    :cond_4
    return-void
.end method

.method public setPayListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    :cond_4
    return-void
.end method

.method public setRealNameListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->realNameListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;

    :cond_4
    return-void
.end method

.method public setRewardAdListener(Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    :cond_4
    return-void
.end method

.method public setSubmitRoleListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    :cond_4
    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13

    const-string v0, "\u8c03\u7528\u64ad\u653e\u63d2\u5c4f\u5e7f\u544a\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1d

    const-string p1, "\u64ad\u653e\u63d2\u5c4f\u5e7f\u544a\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    invoke-direct {v0, v1, p2, p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1c
    return-void

    :cond_1d
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    .line 1
    sget-object v2, Lokjoy/n/k$b;->a:Lokjoy/n/k;

    .line 2
    new-instance v8, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$9;

    invoke-direct {v8, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$9;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)V

    .line 3
    iget-boolean v0, v2, Lokjoy/n/k;->c:Z

    if-nez v0, :cond_3d

    const-string p1, "TopOn SDK is not initialized"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, v2, Lokjoy/n/k;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    invoke-virtual {v8, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$9;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    goto/16 :goto_d3

    :cond_3d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string p1, "TopOn SDK interstitial ad placementID is null"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v1, "\u64ad\u653e\u5e7f\u544a placementID \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_52
    invoke-virtual {v2, p2}, Lokjoy/n/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string p1, "TopOn SDK reward ad placementID is not validity"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v1, "\u64ad\u653e\u5e7f\u544a placementID \u4e0d\u5408\u6cd5"

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_67
    iput-object v8, v2, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-virtual {v2, p2}, Lokjoy/n/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4
    iput-object p1, v2, Lokjoy/n/k;->b:Landroid/app/Activity;

    iget-object p2, v2, Lokjoy/n/k;->g:Ljava/util/HashMap;

    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_9c

    iget-object p2, v2, Lokjoy/n/k;->g:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/interstitial/api/ATInterstitial;

    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "TopOn SDK \u5df2\u53d1\u73b0\u63d2\u5c4f\u5e7f\u544a\u7f13\u5b58\uff0c\u5df2\u51c6\u5907\u597d"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    iget-object p1, v2, Lokjoy/n/k;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d3

    :cond_97
    iget-object p2, v2, Lokjoy/n/k;->g:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    const-string p2, "TopOn SDK \u672a\u53d1\u73b0\u63d2\u5c4f\u5e7f\u544a\u7f13\u5b58\uff0c\u6b64\u5904\u5f00\u59cb\u7f13\u5b58"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v5, Lokjoy/u/a;

    invoke-direct {v5, p1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 5
    const-string p2, "\u52a0\u8f7d\u4e2d..."

    iput-object p2, v5, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Lokjoy/u/a;->show()V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lokjoy/n/h;

    invoke-direct {v4, v2, v5, v8, v9}, Lokjoy/n/h;-><init>(Lokjoy/n/k;Lokjoy/u/a;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p2, Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p2, p1, v9}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    new-instance v0, Lokjoy/n/i;

    move-object v1, v0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lokjoy/n/i;-><init>(Lokjoy/n/k;Landroid/os/Handler;Ljava/lang/Runnable;Lokjoy/u/a;Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    :goto_d3
    return-void
.end method

.method public showRewardAd(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13

    const-string v0, "\u8c03\u7528\u64ad\u653e\u6fc0\u52b1\u5e7f\u544a\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1d

    const-string p1, "\u64ad\u653e\u5956\u52b1\u5e7f\u544a\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    invoke-direct {v0, v1, p2, p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1c
    return-void

    :cond_1d
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    .line 1
    sget-object v2, Lokjoy/n/k$b;->a:Lokjoy/n/k;

    .line 2
    new-instance v8, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$8;

    invoke-direct {v8, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$8;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)V

    .line 3
    iget-boolean v0, v2, Lokjoy/n/k;->c:Z

    if-nez v0, :cond_3d

    const-string p1, "TopOn SDK is not initialized"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, v2, Lokjoy/n/k;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    invoke-virtual {v8, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$8;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    goto/16 :goto_d6

    :cond_3d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string p1, "TopOn SDK reward ad placementID is null"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v1, "\u64ad\u653e\u5e7f\u544a placementID \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_52
    invoke-virtual {v2, p2}, Lokjoy/n/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string p1, "TopOn SDK reward ad placementID is not validity"

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v1, "\u64ad\u653e\u5e7f\u544a placementID \u4e0d\u5408\u6cd5"

    invoke-direct {p1, v0, p2, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_67
    iput-object v8, v2, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-virtual {v2, p2}, Lokjoy/n/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4
    iput-object p1, v2, Lokjoy/n/k;->b:Landroid/app/Activity;

    iget-object p2, v2, Lokjoy/n/k;->f:Ljava/util/HashMap;

    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_9c

    iget-object p2, v2, Lokjoy/n/k;->f:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "TopOn SDK \u5df2\u53d1\u73b0\u6fc0\u52b1\u5e7f\u544a\u7f13\u5b58\uff0c\u5df2\u51c6\u5907\u597d"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show(Landroid/app/Activity;)V

    iget-object p1, v2, Lokjoy/n/k;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    :cond_97
    iget-object p2, v2, Lokjoy/n/k;->f:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    const-string p2, "TopOn SDK \u672a\u53d1\u73b0\u6fc0\u52b1\u5e7f\u544a\u7f13\u5b58\uff0c\u6b64\u5904\u5f00\u59cb\u7f13\u5b58"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v5, Lokjoy/u/a;

    invoke-direct {v5, p1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 5
    const-string p2, "\u52a0\u8f7d\u4e2d..."

    iput-object p2, v5, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Lokjoy/u/a;->show()V

    const/4 p2, 0x0

    iput-boolean p2, v2, Lokjoy/n/k;->m:Z

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lokjoy/n/f;

    invoke-direct {v4, v2, v5, v8, v9}, Lokjoy/n/f;-><init>(Lokjoy/n/k;Lokjoy/u/a;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p2, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {p2, p1, v9}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    new-instance v0, Lokjoy/n/g;

    move-object v1, v0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lokjoy/n/g;-><init>(Lokjoy/n/k;Landroid/os/Handler;Ljava/lang/Runnable;Lokjoy/u/a;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Landroid/app/Activity;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    :goto_d6
    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;)V
    .registers 8

    const-string p2, "\u8c03\u7528\u89d2\u8272\u4fe1\u606f\u63a5\u53e3"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-boolean p2, Lokjoy/e/b;->d:Z

    if-nez p2, :cond_1b

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1aSDK\u672a\u767b\u5f55"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_1a

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_1a
    return-void

    :cond_1b
    if-nez p1, :cond_2f

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63a5\u53e3 activity \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_2e

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_2e
    return-void

    :cond_2f
    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getScene()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1aroleId\u4e0d\u80fd\u4e3a\u7a7a"

    if-eqz v0, :cond_4d

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p1, :cond_4c

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p2, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_4c
    return-void

    :cond_4d
    const-string v0, "create"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "level"

    if-nez v0, :cond_77

    const-string v0, "login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1ascene\u8bf7\u586b\u5199\u6b63\u786e\u7684\u573a\u666f"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_76

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_76
    return-void

    :cond_77
    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p1, :cond_94

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p2, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_94
    return-void

    :cond_95
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1aroleName\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_b0

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_b0
    return-void

    :cond_b1
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1aroleLevel\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_cc

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_cc
    return-void

    :cond_cd
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1aserverId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_e8

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_e8
    return-void

    :cond_e9
    invoke-virtual {p3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getVipLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_105

    const-string p1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1avipLevel\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p2, :cond_104

    new-instance p3, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    invoke-direct {p3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_104
    return-void

    :cond_105
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11a

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p1, :cond_119

    new-instance p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    const-string p3, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u6210\u529f"

    invoke-direct {p2, p3}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_119
    return-void

    :cond_11a
    new-instance p2, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$5;

    invoke-direct {p2, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$5;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)V

    .line 1
    new-instance v1, Lokjoy/h/x;

    invoke-direct {v1, p1, p3, v0}, Lokjoy/h/x;-><init>(Landroid/content/Context;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;Ljava/lang/String;)V

    invoke-virtual {v1}, Lokjoy/h/x;->getRequestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lokjoy/h/z;

    invoke-direct {v0, p2}, Lokjoy/h/z;-><init>(Lokjoy/h/c;)V

    invoke-static {p1, p3, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method

.method public test(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
