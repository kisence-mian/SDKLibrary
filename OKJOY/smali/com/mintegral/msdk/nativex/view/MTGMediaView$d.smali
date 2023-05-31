.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$d;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/base/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 3124
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3135
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 3136
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3137
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 3149
    :goto_1a
    return v0

    .line 3139
    :cond_1b
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move v0, v1

    .line 3140
    goto :goto_1a

    .line 3142
    :cond_23
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_1a

    .line 3147
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    move v0, v1

    .line 3149
    goto :goto_1a
.end method
