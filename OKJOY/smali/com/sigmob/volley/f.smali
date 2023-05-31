.class public Lcom/sigmob/volley/f;
.super Lcom/sigmob/volley/ac;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/volley/ac;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/volley/ac;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sigmob/volley/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/f;->b:Ljava/lang/String;

    return-object v0
.end method
