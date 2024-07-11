.class public Lcom/sigmob/volley/s;
.super Lcom/sigmob/volley/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/volley/t;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    const-string v0, "TimeOut Error"

    return-object v0
.end method
