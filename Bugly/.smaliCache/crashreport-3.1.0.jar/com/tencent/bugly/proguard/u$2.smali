.class final Lcom/tencent/bugly/proguard/u$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/u;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/u;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .registers 4

    .line 749
    iput p2, p0, Lcom/tencent/bugly/proguard/u$2;->a:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/u$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 752
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/tencent/bugly/proguard/u$2;->a:I

    if-ge v0, v1, :cond_15

    .line 753
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 754
    if-eqz v1, :cond_15

    .line 755
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 760
    :cond_15
    return-void
.end method
