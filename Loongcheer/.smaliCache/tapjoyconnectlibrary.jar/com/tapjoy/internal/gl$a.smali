.class public final Lcom/tapjoy/internal/gl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/tapjoy/internal/gl;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gl;Ljava/lang/String;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/tapjoy/internal/gl$a;->c:Lcom/tapjoy/internal/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/tapjoy/internal/gl$a;->a:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 40
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
