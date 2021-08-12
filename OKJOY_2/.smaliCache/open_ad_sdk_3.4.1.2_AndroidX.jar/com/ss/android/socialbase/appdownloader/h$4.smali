.class Lcom/ss/android/socialbase/appdownloader/h$4;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/h;->a(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/socialbase/appdownloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/h;Landroid/content/Context;IZ)V
    .registers 5

    .line 137
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->d:Lcom/ss/android/socialbase/appdownloader/h;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->a:Landroid/content/Context;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->b:I

    iput-boolean p4, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->d:Lcom/ss/android/socialbase/appdownloader/h;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->a:Landroid/content/Context;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->b:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/h$4;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/h;->a(Landroid/content/Context;IZ)I

    .line 141
    return-void
.end method
