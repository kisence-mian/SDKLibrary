.class public Lcom/taptap/sdk/o/a;
.super Ljava/lang/Object;
.source "CloudGameInitialize.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/taptap/sdk/o/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "initialize"

    iput-object v0, p0, Lcom/taptap/sdk/o/a;->a:Ljava/lang/String;

    return-void
.end method
