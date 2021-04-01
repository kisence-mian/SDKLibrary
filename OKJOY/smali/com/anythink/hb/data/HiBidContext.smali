.class public Lcom/anythink/hb/data/HiBidContext;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/anythink/hb/data/HiBidContext;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/anythink/hb/data/HiBidContext;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/anythink/hb/data/HiBidContext;->c:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/hb/data/HiBidContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/hb/data/HiBidContext;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/anythink/hb/data/HiBidContext;->a:Landroid/content/Context;

    return-object v0
.end method
