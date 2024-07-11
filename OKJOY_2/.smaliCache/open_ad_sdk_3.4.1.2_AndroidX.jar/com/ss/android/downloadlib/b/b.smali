.class public Lcom/ss/android/downloadlib/b/b;
.super Ljava/lang/Object;
.source "AppInstallFinishInterceptor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/g;I)V
    .registers 6

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/b/b$1;-><init>(Lcom/ss/android/downloadlib/b/b;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/g;)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 42
    return-void
.end method
