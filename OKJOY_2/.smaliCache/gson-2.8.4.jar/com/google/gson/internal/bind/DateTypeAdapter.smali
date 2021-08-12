.class public final Lcom/google/gson/internal/bind/DateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "DateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/google/gson/internal/bind/DateTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/DateTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 60
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 63
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_27
    invoke-static {}, Lcom/google/gson/util/VersionUtils;->isJava9OrLater()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 66
    invoke-static {v2, v2}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_34
    return-void
.end method

.method private declared-synchronized deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2e

    .line 81
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_13
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_17} :catch_19
    .catchall {:try_start_13 .. :try_end_17} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 82
    .end local p0    # "this":Lcom/google/gson/internal/bind/DateTypeAdapter;
    :catch_19
    move-exception v2

    .line 83
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_7

    .line 85
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0
    :try_end_25
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_25} :catch_27
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 86
    :catch_27
    move-exception v0

    .line 87
    .local v0, "e":Ljava/text/ParseException;
    :try_start_28
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 78
    .end local v0    # "e":Ljava/text/ParseException;
    .end local p1    # "json":Ljava/lang/String;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/DateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .registers 4
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 72
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/DateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/DateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
    .registers 5
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    if-nez p2, :cond_8

    .line 93
    :try_start_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 94
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Lcom/google/gson/internal/bind/DateTypeAdapter;
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "dateFormatAsString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    .line 98
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "dateFormatAsString":Ljava/lang/String;
    .end local p1    # "out":Lcom/google/gson/stream/JsonWriter;
    .end local p2    # "value":Ljava/util/Date;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
