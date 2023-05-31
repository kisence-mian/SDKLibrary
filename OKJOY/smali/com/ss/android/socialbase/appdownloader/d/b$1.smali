.class Lcom/ss/android/socialbase/appdownloader/d/b$1;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/d/b;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 71
    :goto_7
    return-void

    .line 68
    :catch_8
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
