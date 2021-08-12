.class final Lcom/ss/android/socialbase/appdownloader/c$1;
.super Ljava/lang/Object;
.source "AppDownloadUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 165
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->a:Landroid/content/Context;

    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->b:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->a:Landroid/content/Context;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->b:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/c$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/c;->c(Landroid/content/Context;IZ)I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(I)I

    .line 169
    return-void
.end method
