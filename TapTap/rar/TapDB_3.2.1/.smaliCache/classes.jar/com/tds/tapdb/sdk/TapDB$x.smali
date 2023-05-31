.class Lcom/tds/tapdb/sdk/TapDB$x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/tapdb/sdk/TapDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "x"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$x;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/tapdb/sdk/TapDB$x;->b:Z

    iput-boolean p1, p0, Lcom/tds/tapdb/sdk/TapDB$x;->b:Z

    iput-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$x;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDB$x;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB$x;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$x;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tds/tapdb/sdk/TapDB$x;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tds/tapdb/sdk/TapDB$x;->b:Z

    return v0
.end method
