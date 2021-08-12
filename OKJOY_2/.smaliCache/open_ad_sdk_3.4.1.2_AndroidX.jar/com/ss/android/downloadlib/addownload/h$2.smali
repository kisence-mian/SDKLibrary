.class Lcom/ss/android/downloadlib/addownload/h$2;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/a/a/a/q;)V
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

    .line 222
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h$2;->b:Lcom/ss/android/downloadlib/addownload/h;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/h$2;->a:Lcom/ss/android/a/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h$2;->a:Lcom/ss/android/a/a/a/q;

    if-eqz v0, :cond_7

    .line 226
    invoke-interface {v0}, Lcom/ss/android/a/a/a/q;->a()V

    .line 228
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h$2;->a:Lcom/ss/android/a/a/a/q;

    if-eqz v0, :cond_7

    .line 233
    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/q;->a(Ljava/lang/String;)V

    .line 235
    :cond_7
    return-void
.end method
