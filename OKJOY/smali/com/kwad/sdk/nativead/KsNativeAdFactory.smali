.class public Lcom/kwad/sdk/nativead/KsNativeAdFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "KsNativeAdFactory"

.field private static final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNativeAd(Ljava/lang/String;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$a;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/nativead/KsNativeAdFactory$a;-><init>(Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V

    invoke-static {v0}, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->doInMainThread(Ljava/lang/Runnable;)V

    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kwad/sdk/core/response/model/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/response/model/b;->a(Lorg/json/JSONObject;)V

    iget v0, v1, Lcom/kwad/sdk/core/response/model/b;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_29

    new-instance v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;-><init>(Lcom/kwad/sdk/core/response/model/b;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V

    invoke-static {v0}, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->doInMainThread(Ljava/lang/Runnable;)V

    :goto_28
    return-void

    :cond_29
    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/b;->a()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$c;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/nativead/KsNativeAdFactory$c;-><init>(Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V

    invoke-static {v0}, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->doInMainThread(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_37} :catch_38

    goto :goto_28

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v1, v0, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;->onError(ILjava/lang/String;)V

    goto :goto_28

    :cond_46
    :try_start_46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_51

    new-instance v3, Lcom/kwad/sdk/nativead/a;

    invoke-direct {v3, v0}, Lcom/kwad/sdk/nativead/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_68
    new-instance v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;

    invoke-direct {v0, p1, v2}, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;-><init>(Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->doInMainThread(Ljava/lang/Runnable;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_70} :catch_38

    goto :goto_28
.end method

.method private static doInMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void

    :cond_12
    sget-object v0, Lcom/kwad/sdk/nativead/KsNativeAdFactory;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method
