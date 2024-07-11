.class public abstract Lcom/anythink/core/common/g/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


# instance fields
.field private a:J

.field protected g:Z

.field protected h:Lcom/anythink/core/common/g/a/c;

.field protected i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/g/a/b;->g:Z

    .line 18
    iput v0, p0, Lcom/anythink/core/common/g/a/b;->i:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/g/a/b;->a:J

    return-void
.end method

.method private a(Lcom/anythink/core/common/g/a/c;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/anythink/core/common/g/a/b;->h:Lcom/anythink/core/common/g/a/c;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/anythink/core/common/g/a/b;->a:J

    .line 23
    return-void
.end method

.method public final b()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/anythink/core/common/g/a/b;->a:J

    return-wide v0
.end method

.method public run()V
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/anythink/core/common/g/a/b;->a()V

    .line 47
    return-void
.end method
