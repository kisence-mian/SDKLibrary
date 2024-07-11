.class Lcom/ss/android/downloadlib/addownload/d$a;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ss/android/downloadlib/addownload/d$b;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/d$b;Ljava/lang/String;)V
    .registers 3

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$a;->b:Lcom/ss/android/downloadlib/addownload/d$b;

    .line 302
    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$a;->a:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$a;->b:Lcom/ss/android/downloadlib/addownload/d$b;

    if-eqz v0, :cond_11

    .line 308
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d$b;->a(J)I

    move-result p1

    return p1

    .line 310
    :cond_11
    const/4 p1, 0x1

    return p1
.end method
