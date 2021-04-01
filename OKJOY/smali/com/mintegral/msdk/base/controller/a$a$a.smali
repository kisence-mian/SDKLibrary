.class public final Lcom/mintegral/msdk/base/controller/a$a$a;
.super Ljava/lang/Object;
.source "MTGSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/a$a;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/controller/a$a;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 581
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a$a$a;->a:Lcom/mintegral/msdk/base/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/mintegral/msdk/base/controller/a$a$a;->b:Ljava/lang/String;

    .line 583
    iput-boolean p3, p0, Lcom/mintegral/msdk/base/controller/a$a$a;->c:Z

    .line 584
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$a$a;->b:Ljava/lang/String;

    return-object v0
.end method
