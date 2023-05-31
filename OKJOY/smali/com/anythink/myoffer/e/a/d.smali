.class public abstract Lcom/anythink/myoffer/e/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/e/a/a;


# static fields
.field public static final g:Ljava/lang/String; = "extra_request_id"

.field public static final h:Ljava/lang/String; = "extra_scenario"

.field public static final i:Ljava/lang/String; = "extra_orientation"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/anythink/myoffer/c/c;

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/e/a/d;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/anythink/myoffer/e/a/d;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/anythink/myoffer/e/a/d;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/anythink/myoffer/e/a/d;->d:Ljava/lang/String;

    .line 25
    iput-boolean p5, p0, Lcom/anythink/myoffer/e/a/d;->f:Z

    .line 1031
    iget-object v0, p0, Lcom/anythink/myoffer/e/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/myoffer/c/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/e/a/d;->e:Lcom/anythink/myoffer/c/c;

    .line 28
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/e/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/myoffer/c/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/e/a/d;->e:Lcom/anythink/myoffer/c/c;

    .line 32
    return-void
.end method
