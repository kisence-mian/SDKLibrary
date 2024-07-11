.class public Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b:I

    return v0
.end method

.method public a(J)V
    .registers 5

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a:J

    iget p1, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b:I

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a:J

    return-wide v0
.end method
