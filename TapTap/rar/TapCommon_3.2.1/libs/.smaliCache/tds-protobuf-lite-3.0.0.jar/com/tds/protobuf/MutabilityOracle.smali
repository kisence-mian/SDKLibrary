.class interface abstract Lcom/tds/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"


# static fields
.field public static final IMMUTABLE:Lcom/tds/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/tds/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Lcom/tds/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Lcom/tds/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/tds/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method
