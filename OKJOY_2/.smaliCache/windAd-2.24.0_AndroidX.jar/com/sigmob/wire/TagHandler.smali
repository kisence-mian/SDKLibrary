.class public interface abstract Lcom/sigmob/wire/TagHandler;
.super Ljava/lang/Object;


# static fields
.field public static final UNKNOWN_TAG:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sigmob/wire/TagHandler;->UNKNOWN_TAG:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract decodeMessage(I)Ljava/lang/Object;
.end method
