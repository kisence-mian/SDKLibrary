.class final Lcom/anythink/nativead/a/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()F
    .registers 5

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/anythink/nativead/a/a/b$a;->a:J

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->f:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/nativead/a/a/b$a;->g:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    return v0
.end method
