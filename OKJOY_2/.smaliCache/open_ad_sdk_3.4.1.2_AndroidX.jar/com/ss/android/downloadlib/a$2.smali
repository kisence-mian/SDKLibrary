.class Lcom/ss/android/downloadlib/a$2;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ss/android/downloadlib/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a;J)V
    .registers 4

    .line 431
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$2;->b:Lcom/ss/android/downloadlib/a;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/a$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 434
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/a$2;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a;->a(J)V

    .line 435
    return-void
.end method
