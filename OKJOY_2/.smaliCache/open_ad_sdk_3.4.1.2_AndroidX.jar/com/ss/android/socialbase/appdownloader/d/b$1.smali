.class Lcom/ss/android/socialbase/appdownloader/d/b$1;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/d/b;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;I)V
    .registers 4

    .line 65
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->c:Lcom/ss/android/socialbase/appdownloader/d/b;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->a:Ljava/util/List;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->c:Lcom/ss/android/socialbase/appdownloader/d/b;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->a:Ljava/util/List;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 72
    goto :goto_e

    .line 70
    :catch_a
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :goto_e
    return-void
.end method
