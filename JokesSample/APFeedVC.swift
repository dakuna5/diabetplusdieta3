//
//  APFeedVC.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APFeedVC : ANViewController, UITableViewDataSource, UITableViewDelegate, ANDataListDelegate  {
    
    @IBOutlet weak var poststable: UITableView?
    open var poststableDataList: ANDataList?;

    

    override public func awakeFromNib() -> Void {
        super.awakeFromNib();
        self.poststableDataList = ANDataList(type: ANDataTypeJSON, filenameOrUrl: "http://animaapp.s3.amazonaws.com/demo-apps/jokes/jokes_feed.json", delegate: self);
        self.poststableDataList!.refresh();
    }



    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.poststable) {
            return Int(self.poststableDataList!.count());
        }
        return 0;
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableView == self.poststable) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "postcell") as! APPostcell;
            cell.dataDictionary = self.poststableDataList!.item(at: UInt(indexPath.row)) as NSDictionary?;
            cell.delegate = self;
            return cell;
        }
        return UITableViewCell();
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (tableView == self.poststable) {
            return 170.0;
        }
        return 0.0;
    }

    public func dataListDidFinishLoading(_ dataList: ANDataList) {
        if (dataList == self.poststableDataList) {
            guard let poststable = poststable else {
                return
            }
            poststable.reloadData();
        }
    }
}