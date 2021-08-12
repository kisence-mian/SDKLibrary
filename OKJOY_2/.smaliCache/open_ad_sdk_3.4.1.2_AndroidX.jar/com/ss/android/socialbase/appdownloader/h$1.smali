.class Lcom/ss/android/socialbase/appdownloader/h$1;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/h;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)V

    .line 53
    return-void
.end method
