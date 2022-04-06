//
//  RefreshView.swift
//  SwiftUIPullToRefresh
//
//  Created by apple on 2021/7/14.
//

import SwiftUI

struct NewsView: View {
    
    @State private var items: [GOANewsModel] = []
    @Environment(\.colorScheme) var scheme
    
    @State private var headerRefreshing: Bool = false
    @State private var footerRefreshing: Bool = false
    
    @State private var listState = ListState()
    
    var body: some View {
        BaseNavigationBarView(content: pullToRefreshScrollBody, barTitle: "提醒")
    }
    
    var pullToRefreshScrollBody: some View {
        headerRefresh
    }
    
    // 只对头部进行数据下拉刷新
    var headerRefresh: some View {
        ScrollView {
            PullToRefreshView(header: RefreshDefaultHeader()) {
                ItemList(items: items)
            }.environmentObject(listState)
        }
        .addPullToRefresh(isHeaderRefreshing: $headerRefreshing, onHeaderRefresh: reloadData)
    }
    // 只对尾部进行数据上拉加载
    var footerRefresh: some View {
        ScrollView {
            PullToRefreshView(footer: RefreshDefaultFooter()) {
                ItemList(items: items)
            }.environmentObject(listState)
        }
        .addPullToRefresh(isFooterRefreshing: $footerRefreshing, onFooterRefresh: loadMoreData)
    }
    // 下拉刷新、上拉加载
    var headerFooterRefresh: some View {
        ScrollView {
            PullToRefreshView(header: RefreshDefaultHeader(), footer: RefreshDefaultFooter()) {
                ItemList(items: items)
            }.environmentObject(listState)
        }
        .addPullToRefresh(isHeaderRefreshing: $headerRefreshing, onHeaderRefresh: reloadData,
                          isFooterRefreshing: $footerRefreshing, onFooterRefresh: loadMoreData)
    }
    
    private func loadData() {
        var tempItems: [GOANewsModel] = []
        for index in 0..<10 {
            if index >= newsList.count {
                // 如果已经没有数据，则终止添加
                listState.setNoMore(true)
                break
            }
            let item = newsList[index]
            
            tempItems.append(item)
        }
        self.items = tempItems
    }
    
    private func reloadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            loadData()
            headerRefreshing = false
        }
    }
    
    private func loadMoreData() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let startIndex = items.count
            for index in 0..<10 {
                let finalIndex = startIndex + index
                if finalIndex >= newsList.count {
                    // 如果已经没有数据，则终止添加
                    listState.setNoMore(true)
                    break
                }
                let item = newsList[finalIndex]
                
                self.items.append(item)
            }
            footerRefreshing = false
           
        }
    }
}

struct ItemList: View {
    let items: [GOANewsModel]
    var body: some View {
        VStack {
            ForEach(items){item in
                GOANewsCell(mode: item)
            }.padding().background(Color.white)
        }
    }
    
}



#if DEBUG
struct RefreshView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView().preferredColorScheme(.light)
    }
}
#endif

