.class final Lcom/anythink/nativead/a/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/a/c;->a(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 47
    iput-object p1, p0, Lcom/anythink/nativead/a/a/c$1;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    iput-object p2, p0, Lcom/anythink/nativead/a/a/c$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/nativead/a/a/c$1;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iput-object p4, p0, Lcom/anythink/nativead/a/a/c$1;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/anythink/nativead/a/a/c$1;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/anythink/nativead/a/a/c$1;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    iget-object v1, p0, Lcom/anythink/nativead/a/a/c$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/nativead/a/a/c$1;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v3, p0, Lcom/anythink/nativead/a/a/c$1;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/anythink/nativead/a/a/c$1;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;->loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 61
    :goto_d
    return-void

    .line 56
    :catch_e
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    const-string v1, "2006"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/anythink/nativead/a/a/c$1;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/nativead/a/a/c$1;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_d
.end method
