.class Lcom/ss/android/downloadlib/a/e$a;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ss/android/downloadlib/a/e$b;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a/e$b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/e$a;->b:Lcom/ss/android/downloadlib/a/e$b;

    .line 285
    iput-object p2, p0, Lcom/ss/android/downloadlib/a/e$a;->a:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$a;->b:Lcom/ss/android/downloadlib/a/e$b;

    if-eqz v0, :cond_13

    .line 291
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$a;->b:Lcom/ss/android/downloadlib/a/e$b;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/e$b;->a(J)I

    move-result v0

    .line 293
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method
