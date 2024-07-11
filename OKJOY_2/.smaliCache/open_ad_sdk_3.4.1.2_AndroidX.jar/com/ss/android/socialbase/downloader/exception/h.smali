.class public Lcom/ss/android/socialbase/downloader/exception/h;
.super Ljava/lang/Throwable;
.source "RetryThrowable.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/exception/h;->a:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/exception/h;->a:Ljava/lang/String;

    return-object v0
.end method
