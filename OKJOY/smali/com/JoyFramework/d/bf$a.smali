.class Lcom/JoyFramework/d/bf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/d/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/JoyFramework/d/bf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/JoyFramework/d/bf;

    invoke-direct {v0}, Lcom/JoyFramework/d/bf;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/bf$a;->a:Lcom/JoyFramework/d/bf;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/JoyFramework/d/bf;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/JoyFramework/d/bf$a;->a:Lcom/JoyFramework/d/bf;

    return-object v0
.end method
