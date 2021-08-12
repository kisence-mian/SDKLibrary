.class Lcom/ss/android/downloadlib/addownload/e$5;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->a(ILjava/lang/String;JLcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f$a;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$a;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$5;->b:Lcom/ss/android/downloadlib/addownload/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/e$5;->a:Lcom/ss/android/downloadlib/addownload/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$5;->a:Lcom/ss/android/downloadlib/addownload/f$a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/f$a;->a()V

    .line 234
    return-void
.end method
