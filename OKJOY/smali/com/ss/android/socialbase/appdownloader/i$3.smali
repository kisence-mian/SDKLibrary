.class Lcom/ss/android/socialbase/appdownloader/i$3;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/i;Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->c:Lcom/ss/android/socialbase/appdownloader/i;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->c:Lcom/ss/android/socialbase/appdownloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i$3;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Lcom/ss/android/socialbase/appdownloader/i;Landroid/content/Context;IZ)I

    .line 80
    return-void
.end method
