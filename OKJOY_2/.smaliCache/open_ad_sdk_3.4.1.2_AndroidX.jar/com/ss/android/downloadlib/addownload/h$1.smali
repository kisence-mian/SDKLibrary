.class Lcom/ss/android/downloadlib/addownload/h$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/a/a/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/a/a/a/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/q;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/h;Lcom/ss/android/a/a/a/q;)V
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h$1;->b:Lcom/ss/android/downloadlib/addownload/h;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/h$1;->a:Lcom/ss/android/a/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h$1;->a:Lcom/ss/android/a/a/a/q;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/q;->a()V

    .line 201
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    .line 205
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h$1;->b:Lcom/ss/android/downloadlib/addownload/h;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/downloadlib/addownload/h;)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v1

    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 205
    const/4 v1, 0x1

    const-string v4, "\u60a8\u5df2\u7981\u6b62\u4f7f\u7528\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6388\u6743\u540e\u518d\u4e0b\u8f7d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/k;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 208
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h$1;->b:Lcom/ss/android/downloadlib/addownload/h;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/downloadlib/addownload/h;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/e/a;->b(JI)V

    .line 209
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h$1;->a:Lcom/ss/android/a/a/a/q;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/q;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method
