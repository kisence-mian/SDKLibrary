.class Lcom/ss/android/downloadlib/a/h$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/a/a/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/a/a/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/n;

.field final synthetic b:Lcom/ss/android/downloadlib/a/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/h;Lcom/ss/android/a/a/a/n;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/h$1;->b:Lcom/ss/android/downloadlib/a/h;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/h$1;->a:Lcom/ss/android/a/a/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$1;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 237
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h$1;->b:Lcom/ss/android/downloadlib/a/h;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/downloadlib/a/h;)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v3

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    const-string v4, "\u60a8\u5df2\u7981\u6b62\u4f7f\u7528\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6388\u6743\u540e\u518d\u4e0b\u8f7d"

    const/4 v5, 0x0

    move v6, v1

    .line 237
    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/j;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 240
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h$1;->b:Lcom/ss/android/downloadlib/a/h;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/h;->b(Lcom/ss/android/downloadlib/a/h;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->b(JI)V

    .line 241
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$1;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/n;->a(Ljava/lang/String;)V

    .line 242
    return-void
.end method
