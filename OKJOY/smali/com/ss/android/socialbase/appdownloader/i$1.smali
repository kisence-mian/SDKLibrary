.class Lcom/ss/android/socialbase/appdownloader/i$1;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/i;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/i$1;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i$1;->a:Lcom/ss/android/socialbase/appdownloader/i;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/i;->a(Lcom/ss/android/socialbase/appdownloader/i;)V

    .line 48
    return-void
.end method
