.class public Lcom/ss/android/downloadlib/a/b/c$a;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/ss/android/a/a/b/c;

.field public c:Lcom/ss/android/a/a/b/b;

.field public d:Lcom/ss/android/a/a/b/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public constructor <init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 7

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a/b/c$a;->a:J

    .line 232
    iput-object p3, p0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 233
    iput-object p4, p0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    .line 234
    iput-object p5, p0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    .line 235
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a/b/c$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
