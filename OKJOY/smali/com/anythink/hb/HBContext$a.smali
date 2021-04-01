.class final Lcom/anythink/hb/HBContext$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/hb/HBContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/anythink/hb/HBContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lcom/anythink/hb/HBContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/hb/HBContext;-><init>(B)V

    sput-object v0, Lcom/anythink/hb/HBContext$a;->a:Lcom/anythink/hb/HBContext;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
