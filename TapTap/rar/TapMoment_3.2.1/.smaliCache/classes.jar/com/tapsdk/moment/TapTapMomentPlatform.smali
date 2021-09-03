.class public Lcom/tapsdk/moment/TapTapMomentPlatform;
.super Ljava/lang/Object;
.source "TapTapMomentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/TapTapMomentPlatform$LoginResultCallback;,
        Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;
    }
.end annotation


# static fields
.field private static final MSG_PROGRESS_TIMEOUT:Ljava/lang/String; = "msg_progress_timeout"

.field private static final PUBLISH_FROM:Ljava/lang/String; = "sdk"

.field private static activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapsdk/moment/view/LoadingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static loginResultCallback:Lcom/tapsdk/moment/TapTapMomentPlatform$LoginResultCallback;

.field private static momentDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapsdk/moment/view/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PUBLISH_CONTENT:Ljava/lang/String;

.field private final PUBLISH_VIDEO:Ljava/lang/String;

.field private current:Landroid/app/Fragment;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "video-editor"

    iput-object v0, p0, Lcom/tapsdk/moment/TapTapMomentPlatform;->PUBLISH_VIDEO:Ljava/lang/String;

    .line 33
    const-string v0, "moment-editor"

    iput-object v0, p0, Lcom/tapsdk/moment/TapTapMomentPlatform;->PUBLISH_CONTENT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 26
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->dismissLoading()V

    return-void
.end method

.method static closeMomentDialog()V
    .registers 1

    .line 105
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 106
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->dismiss()V

    .line 107
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 109
    :cond_16
    return-void
.end method

.method private static constructorParams(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 206
    goto :goto_d

    .line 208
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_59

    .line 209
    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "&%s=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_d

    .line 212
    :cond_59
    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "?%s=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_d

    .line 214
    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static dismissLoading()V
    .registers 1

    .line 147
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    .line 148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 149
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/LoadingDialog;->dismiss()V

    .line 152
    :cond_23
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    .line 45
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private static getUrlExtra(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "type"    # I
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->COMMON:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_9

    .line 173
    const-string v0, ""

    return-object v0

    .line 175
    :cond_9
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->SCENE:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    const-string v1, "id"

    if-ne p0, v0, :cond_40

    .line 176
    const-string v0, ""

    .line 177
    .local v0, "sceneId":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 178
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 180
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "sceneId":Ljava/lang/String;
    :cond_40
    const-string v0, "?to="

    .line 186
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p0}, Lcom/tapsdk/moment/MomentComponent;->toComponent(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "component":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "from"

    const-string v5, "sdk"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 190
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 192
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "openId"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    .line 193
    :cond_71
    const-string v5, "tap_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 194
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_80
    :goto_80
    sget-boolean v1, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    if-eqz v1, :cond_87

    const-string v1, "itkMoments"

    goto :goto_89

    :cond_87
    const-string v1, "itkmomentsintl"

    .line 198
    .local v1, "schema":Ljava/lang/String;
    :goto_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://forum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/tapsdk/moment/TapTapMomentPlatform;->constructorParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "des":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected static init(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method

.method static isShowing()Z
    .registers 2

    .line 163
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 164
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 164
    :goto_1c
    return v1

    .line 167
    :cond_1d
    return v1
.end method

.method static setMomentShowCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 156
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 157
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0, p0}, Lcom/tapsdk/moment/view/MomentDialog;->setResultCallback(Ljava/lang/Runnable;)V

    .line 159
    :cond_15
    return-void
.end method

.method private static showLoading()V
    .registers 4

    .line 133
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_14

    .line 134
    new-instance v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapsdk/moment/view/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "loadingDialog":Lcom/tapsdk/moment/view/LoadingDialog;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 137
    .end local v0    # "loadingDialog":Lcom/tapsdk/moment/view/LoadingDialog;
    :cond_14
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 138
    sget-object v0, Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/LoadingDialog;->show()V

    .line 141
    :cond_35
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "msg_progress_timeout"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;

    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    return-void
.end method

.method static showMomentDialog(Landroid/os/Bundle;)V
    .registers 26
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 49
    move-object/from16 v1, p0

    if-eqz v1, :cond_129

    .line 50
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_128

    const-string v0, "moment"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 52
    const-string v0, "client_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "clientId":Ljava/lang/String;
    const-string v5, "locale"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .line 54
    .local v6, "locale":Ljava/io/Serializable;
    const-string v7, "access_token"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "accessToken":Ljava/lang/String;
    const-string v9, "token_type"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "tokenType":Ljava/lang/String;
    const-string v11, "mac_algorithm"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "macAlgorithm":Ljava/lang/String;
    const-string v13, "kid"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "kid":Ljava/lang/String;
    const-string v15, "mac_key"

    move-object/from16 v16, v2

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "macKey":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "type":Ljava/lang/String;
    .local v17, "type":Ljava/lang/String;
    const-string v3, "show_type"

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, "showType":I
    const-string v5, "data"

    move-object/from16 v20, v6

    .end local v6    # "locale":Ljava/io/Serializable;
    .local v20, "locale":Ljava/io/Serializable;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "data":Ljava/lang/String;
    move-object/from16 v21, v5

    const-string v5, "params"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "params":Ljava/lang/String;
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v23, v6

    .end local v6    # "data":Ljava/lang/String;
    .local v23, "data":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    .line 63
    .local v6, "originOrientation":I
    move/from16 v22, v3

    .end local v3    # "showType":I
    .local v22, "showType":I
    const-string v3, "orientation"

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "params":Ljava/lang/String;
    .local v24, "params":Ljava/lang/String;
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 64
    .local v5, "orientation":I
    sget v1, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_PORTRAIT:I

    move-object/from16 v19, v2

    .end local v2    # "macKey":Ljava/lang/String;
    .local v19, "macKey":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v5, v1, :cond_7f

    .line 65
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_9c

    .line 66
    :cond_7f
    sget v1, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_LANDSCAPE:I

    if-ne v5, v1, :cond_8c

    .line 67
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_9c

    .line 68
    :cond_8c
    sget v1, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_DEFAULT:I

    if-eq v5, v1, :cond_94

    sget v1, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_SENSOR:I

    if-ne v5, v1, :cond_9c

    .line 69
    :cond_94
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 71
    :cond_9c
    :goto_9c
    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {v1}, Lcom/tapsdk/moment/view/MomentDialog;-><init>()V

    .line 72
    .local v1, "dialog":Lcom/tapsdk/moment/view/MomentDialog;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v2, "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    move-object/from16 v3, v19

    .end local v19    # "macKey":Ljava/lang/String;
    .local v3, "macKey":Ljava/lang/String;
    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_bd
    const-string v0, "url_extra"
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_bf} :catch_cd

    move/from16 v7, v22

    move-object/from16 v9, v24

    .end local v22    # "showType":I
    .end local v24    # "params":Ljava/lang/String;
    .local v7, "showType":I
    .local v9, "params":Ljava/lang/String;
    :try_start_c3
    invoke-static {v7, v9}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getUrlExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_ca} :catch_cb

    .line 85
    goto :goto_d5

    .line 83
    :catch_cb
    move-exception v0

    goto :goto_d2

    .end local v7    # "showType":I
    .end local v9    # "params":Ljava/lang/String;
    .restart local v22    # "showType":I
    .restart local v24    # "params":Ljava/lang/String;
    :catch_cd
    move-exception v0

    move/from16 v7, v22

    move-object/from16 v9, v24

    .line 84
    .end local v22    # "showType":I
    .end local v24    # "params":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v7    # "showType":I
    .restart local v9    # "params":Ljava/lang/String;
    :goto_d2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d5
    if-eqz v20, :cond_df

    .line 87
    move-object/from16 v13, v18

    move-object/from16 v11, v20

    .end local v20    # "locale":Ljava/io/Serializable;
    .local v11, "locale":Ljava/io/Serializable;
    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_e1

    .line 86
    .end local v11    # "locale":Ljava/io/Serializable;
    .restart local v20    # "locale":Ljava/io/Serializable;
    :cond_df
    move-object/from16 v11, v20

    .line 89
    .end local v20    # "locale":Ljava/io/Serializable;
    .restart local v11    # "locale":Ljava/io/Serializable;
    :goto_e1
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    .end local v17    # "type":Ljava/lang/String;
    .local v13, "type":Ljava/lang/String;
    invoke-virtual {v2, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v19, v3

    move-object/from16 v3, v21

    move-object/from16 v15, v23

    .end local v3    # "macKey":Ljava/lang/String;
    .end local v23    # "data":Ljava/lang/String;
    .local v15, "data":Ljava/lang/String;
    .restart local v19    # "macKey":Ljava/lang/String;
    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x103000b

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/tapsdk/moment/view/MomentDialog;->setStyle(II)V

    .line 93
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 94
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 96
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/tapsdk/moment/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 97
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v3

    move-object/from16 v16, v0

    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .local v16, "ft":Landroid/app/FragmentTransaction;
    const-string v0, "appear.moment.taptap.action"

    invoke-virtual {v3, v0}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_129

    .line 51
    .end local v1    # "dialog":Lcom/tapsdk/moment/view/MomentDialog;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "clientId":Ljava/lang/String;
    .end local v5    # "orientation":I
    .end local v6    # "originOrientation":I
    .end local v7    # "showType":I
    .end local v8    # "accessToken":Ljava/lang/String;
    .end local v9    # "params":Ljava/lang/String;
    .end local v10    # "tokenType":Ljava/lang/String;
    .end local v11    # "locale":Ljava/io/Serializable;
    .end local v12    # "macAlgorithm":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "kid":Ljava/lang/String;
    .end local v15    # "data":Ljava/lang/String;
    .end local v16    # "ft":Landroid/app/FragmentTransaction;
    .end local v19    # "macKey":Ljava/lang/String;
    .local v3, "type":Ljava/lang/String;
    :cond_128
    move-object v13, v3

    .line 101
    .end local v3    # "type":Ljava/lang/String;
    :cond_129
    :goto_129
    return-void
.end method
